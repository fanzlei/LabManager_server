package jsonUtils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import utils.User;

public class JsonUtils {

	public JsonUtils() {
		// TODO Auto-generated constructor stub
	}

	public JSONObject inputStreamToJsonObject(InputStream is){
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
		JSONObject jo=JSONObject.fromObject(jsonString);
		return jo;
	}
	public JSONObject getJsonObject(String key,boolean value){
		JSONObject jo=new JSONObject();
		jo.put(key, value);
		return jo;
	}
	
    public JSONArray getJsonArray(List<User> list){
		
		return null;
	}
}
