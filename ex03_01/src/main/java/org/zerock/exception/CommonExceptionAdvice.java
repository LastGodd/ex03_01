package org.zerock.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
@ControllerAdvice
public class CommonExceptionAdvice {

	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.OK)
	public String handle404(NoHandlerFoundException ex) {
		
		return "exception/custom404";
	}
}
