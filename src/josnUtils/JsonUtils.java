package josnUtils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class JsonUtils {

	public JsonUtils() {
		// TODO Auto-generated constructor stub
	}

	public String inputStreamToString(InputStream is){
		BufferedReader br=new BufferedReader(new InputStreamReader(is));
		String jsonString="";
		String str;
		try {
			while((str=br.readLine())!=null){
				jsonString+=str;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonString;
	}
	public User getUser(String jsonString){
		
		return null;
	}
}
