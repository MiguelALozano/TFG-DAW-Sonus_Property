package com.tfg.inmobiliaria.configuracion;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
@Configuration
@EnableWebSecurity
public class DataBaseWebSecurity extends WebSecurityConfigurerAdapter{
	
		@Autowired
		private DataSource dataSource;
		
		/**
		 * Método configure para la autenticación del usuario
		 */

		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.jdbcAuthentication().dataSource(dataSource)
			.usersByUsernameQuery("select username,password,enabled from Usuarios where username=?")
			.authoritiesByUsernameQuery("select u.username, p.descripcion from Usuario_Perfiles up" + 
			" inner join Usuarios u on u.username = up.username inner join Perfiles p on p.id_perfil = up.id_perfil " +
			"where u.username = ?");
		}
		
		/**Z
		 * Sobrecarga del método configure
		 * se establecen las urls en fución del perfil del usuario
		 * o a las cuales se tiene acceso sin estar autenticado.
		 */
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http.csrf().disable()
			.authorizeRequests()
			 //Los recursos estaticos no requieren autenticacion
					.antMatchers("/bootstrap/**","/content/**","/images/**", "/css/**", "js/**").permitAll()

					// Las vistas publicas no requieren autenticacion
					.antMatchers("/","/login","/admon/altaUsuario","/rest/inmobiliaria/**").permitAll()

					// Asignar permisos a URLs por ROLES
					//.antMatchers("/cliente/**").hasAuthority("ROL_USER")
					//.antMatchers("/admon/**").hasAuthority("ROL_ADMON")

					// Todas las demas URLs de la Aplicacion requieren autenticacion
					.anyRequest().authenticated()

					// El formulario de Login no requiere autenticacion
					.and().formLogin().permitAll();
		}
		 
		

}
