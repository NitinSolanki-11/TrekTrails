package PRKSS.PROJ_Tour.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class FileConfig {
	@Bean(name="multipartResolver")
	public CommonsMultipartResolver multipartResolver()
	{
		 CommonsMultipartResolver cmr=new  CommonsMultipartResolver();
		 cmr.setMaxUploadSize(4194304);
		 return cmr;
	}

}
