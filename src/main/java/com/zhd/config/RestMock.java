package com.zhd.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;


@Component
public class RestMock<k, v> {

    @Autowired
    private RestTemplate restTemplate;

    /**
     * 生成post请求的JSON请求参数
     * 请求示例:
     * {
     * "id":1,
     * "name":"张耀烽"
     * }
     *
     * @return
     */
    public HttpEntity<List<String>> generatePostJson(List<String> jsonList) {

        //如果需要其它的请求头信息、都可以在这里追加
        HttpHeaders httpHeaders = new HttpHeaders();

        MediaType type = MediaType.parseMediaType("application/json;charset=UTF-8");

        httpHeaders.setContentType(type);

        HttpEntity<List<String>> httpEntity = new HttpEntity<>(jsonList, httpHeaders);

        return httpEntity;
    }


    /**
     * 生成get参数请求url
     * 示例：https://0.0.0.0:80/api?u=u&o=o
     * 示例：https://0.0.0.0:80/api
     *
     * @param protocol 请求协议 示例: http 或者 https
     * @param uri      请求的uri 示例: 0.0.0.0:80
     * @param params   请求参数
     * @return
     */
    public String generateRequestParameters(String protocol, String uri, Map<String, String> params) {
        StringBuilder sb = new StringBuilder(protocol).append("://").append(uri);
        if (params.size()!=0) {
            sb.append("?");
            for (Map.Entry map : params.entrySet()) {
                sb.append(map.getKey())
                        .append("=")
                        .append(map.getValue())
                        .append("&");
            }
            uri = sb.substring(0, sb.length() - 1);
            return uri;
        }
        return sb.toString();
    }

    /**
     * get请求、请求参数为?拼接形式的
     * <p>
     * 最终请求的URI如下：
     * <p>
     * http://127.0.0.1:80/?name=张耀烽&sex=男
     * protocol "http"
     * uri  "127.0.0.1:80"
     * @return
     */
    public String sendGet(String protocol,String uri,Map<String,String> uriMap) {
        ResponseEntity responseEntity = restTemplate.getForEntity
                (
                        generateRequestParameters(protocol,uri , uriMap),
                        String.class
                );
        return (String) responseEntity.getBody();
    }

    /**
     * post请求、请求参数为json
     * uri 示例 "http://127.0.0.1:80";
     * @return
     */
    public String sendPost(String uri,List<String> jsonList) {
        ResponseEntity<String> apiResponse = restTemplate.postForEntity
                (
                        uri,
                        generatePostJson(jsonList),
                        String.class
                );
        return apiResponse.getBody();
    }

}

