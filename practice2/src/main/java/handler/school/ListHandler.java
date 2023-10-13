package handler.school;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.util.ArrayList;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import handler.Handler;
import school.School;


public class ListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String view = "/school/list.jsp";
		String urlstr = "http://openapi.seoul.go.kr:8088/6a52464e426479643830706b484a5a/xml/neisSchoolInfoFs/1/20/";
		
		try {
			URL url = new URL(urlstr);
			URLConnection conn = url.openConnection();
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(conn.getInputStream());
			Element root = doc.getDocumentElement();
			NodeList locs = root.getElementsByTagName("row");
			ArrayList<School> list = new ArrayList<>();
			for (int i = 0; i < locs.getLength(); i++) {

				Element data = (Element) locs.item(i);
				String SCHUL_NM = data.getElementsByTagName("SCHUL_NM").item(0).getTextContent();
				String ENG_SCHUL_NM = data.getElementsByTagName("ENG_SCHUL_NM").item(0).getTextContent();
				String JU_ORG_NM = data.getElementsByTagName("JU_ORG_NM").item(0).getTextContent();
				String ORG_RDNZC = data.getElementsByTagName("ORG_RDNZC").item(0).getTextContent();
				String ORG_RDNMA = data.getElementsByTagName("ORG_RDNMA").item(0).getTextContent();
				String ORG_TELNO = data.getElementsByTagName("ORG_TELNO").item(0).getTextContent();
				String HMPG_ADRES = data.getElementsByTagName("HMPG_ADRES").item(0).getTextContent();
				String ORG_FAXNO = data.getElementsByTagName("ORG_FAXNO").item(0).getTextContent();
				String COEDU_SC_NM = data.getElementsByTagName("COEDU_SC_NM").item(0).getTextContent();
				String temp = data.getElementsByTagName("FOND_YMD").item(0).getTextContent();
				
				String year = temp.substring(0,4);
				String month = temp.substring(0,2);
				String day = temp.substring(0,2);
				
				String FOND_YMD = year+'-'+month+'-'+day;
				
				list.add(new School(SCHUL_NM, ENG_SCHUL_NM, JU_ORG_NM, ORG_RDNZC, ORG_RDNMA, ORG_TELNO, HMPG_ADRES, ORG_FAXNO, COEDU_SC_NM, FOND_YMD));
			}
			
			/*if(a.getCount()==0) {
				
				for (int i = 0; i < locs.getLength(); i++) {

					Element data = (Element) locs.item(i);
					String title = data.getElementsByTagName("TITL_NM").item(0).getTextContent();
					String content = (String)data.getElementsByTagName("CONT").item(0).getTextContent();
					String writer = data.getElementsByTagName("WRIT_NM").item(0).getTextContent();
					String lang = data.getElementsByTagName("LANG_GB").item(0).getTextContent();
					String wdate = data.getElementsByTagName("REG_DT").item(0).getTextContent();
					String udate = data.getElementsByTagName("UPD_DT").item(0).getTextContent();
					a.addAnnounce(new Announce(0, title, content, writer, lang, wdate, udate));
				}
			}*/
			
			request.setAttribute("list", list);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("view", "/school/list.jsp");
		return view;
	}
}
