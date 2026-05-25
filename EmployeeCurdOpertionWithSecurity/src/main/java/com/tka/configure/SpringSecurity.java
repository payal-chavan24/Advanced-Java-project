package com.tka.configure;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
@Configuration
public class SpringSecurity {
	@Bean
	public UserDetailsService users() {
		UserDetails user = User.withUsername("Payal").password("{noop}payal24May").roles("USER").build();

		UserDetails admin = User.withUsername("Rahul").password("{noop}Rahul23May").roles("ADMIN").build();
		return new InMemoryUserDetailsManager(user, admin);

	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

		http.csrf(csrf -> csrf.disable())
				.authorizeHttpRequests(auth -> auth.requestMatchers("/Employee/Register").hasAnyRole("USER", "ADMIN")

						.requestMatchers("/Employee/updatedData/{empId}").hasRole("ADMIN")
						.requestMatchers("/Employee/Remove/{empId}").hasRole("ADMIN")
						.requestMatchers("/Employee/getSingleRecord/{empId}").hasRole("ADMIN")
						.requestMatchers("/Employee/getAllRecord").hasRole("ADMIN")


						.anyRequest().authenticated())
				.httpBasic(org.springframework.security.config.Customizer.withDefaults());

		return http.build();
	}

}
