package com.blank.exception;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CustomException extends RuntimeException{
	private String error;
    private String details;
}
