/*
 *Author:GeneralSandman
 *Code:https://github.com/GeneralSandman/TinyWeb
 *E-mail:generalsandman@163.com
 *Web:www.dissigil.cn
 */

/*---XXX---
 *
 ****************************************
 *
 */

#include <stdio.h>
#include <iostream>
#include <string>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using namespace std;
using namespace boost::property_tree;

typedef boost::property_tree::ptree ptree;
typedef boost::property_tree::ptree::iterator piterator;

void read_user(const std::string & file_path)
{
	boost::property_tree::ptree root;
	boost::property_tree::ptree items;
	boost::property_tree::read_json<boost::property_tree::ptree>(file_path,root);

	items=root.get_child("product");
	boost::property_tree::ptree basic = items.get_child("basic");
	boost::property_tree::ptree server = items.get_child("server");
	boost::property_tree::ptree log = items.get_child("log");

    // basic-config
    std::cout << "<basic-config>" << std::endl;
    int worker = basic.get<int>("worker", 8);
    std::string pidfile = basic.get<std::string>("pid", "/var/run/TinyWeb.pid");
    bool sendfile = basic.get<bool>("sendfile", true);
    std::string mimetype = basic.get<std::string>("mimetype", "mime.types");
    bool chunked = basic.get<bool>("chunked", true);
    bool gzip = basic.get<bool>("gzip", true);
    int gzip_level = basic.get<int>("gzip_level", 3);
    int gzip_buffers_4k = basic.get<int>("gzip_buffers_4k", 4);
    int gzip_min_len = basic.get<int>("gzip_min_len", 1024);

    std::cout << "worker: " << worker << std::endl;
    std::cout << pidfile << std::endl;
    std::cout << sendfile << std::endl;
    std::cout << mimetype << std::endl;
    std::cout << chunked << std::endl;
    std::cout << gzip << std::endl;
    std::cout << gzip_level << std::endl;
    std::cout << gzip_buffers_4k << std::endl;
    std::cout << gzip_min_len << std::endl;
    ptree gzip_http_version = basic.get_child("gzip_http_version");
    for(auto it=gzip_http_version.begin(); it!=gzip_http_version.end(); it++)
    {
        std::cout << "gzip_http_version: " << it->second.get_value<std::string>() << std::endl;
    }
    ptree gzip_mime_type = basic.get_child("gzip_mime_type");
    for(auto it=gzip_mime_type.begin(); it!=gzip_mime_type.end(); it++)
    {
        std::cout << "gzip_mime_type: " << it->second.get_value<std::string>() << std::endl;
    }

    // server-config
    std::cout << "<server-config>" << std::endl;
	for (piterator it=server.begin(); it!=server.end(); ++it)
	{
        int listen = it->second.get<int>("listen", 80);
	    ptree servername = it->second.get_child("servername");
        std::cout << "servername:";
        for(piterator a=servername.begin(); a!=servername.end(); a++)
        {
            std::cout << a->second.get_value<std::string>() << " ";
        }
        std::cout << std::endl;

        ptree indexpage = it->second.get_child("indexpage");
        std::cout << "indexpage:";
        for(piterator a=indexpage.begin(); a!=indexpage.end(); a++)
        {
            std::cout << a->second.get_value<std::string>() << " ";
        }
        std::cout << std::endl;

        ptree errorpage = it->second.get_child("errorpage");
        for(piterator a=errorpage.begin(); a!=errorpage.end(); a++)
        {
            ptree code = a->second.get_child("code");
            std::cout << "code:";
            for(auto b=code.begin(); b!=code.end(); b++)
            {
                std::cout << b->second.get_value<int>() << " ";
            }
            std::cout << std::endl;
            std::cout << "path:" << a->second.get<std::string> ("path", "") << std::endl;
            std::cout << "file:" << a->second.get<std::string> ("file", "") << std::endl;

        }
        std::string www = it->second.get<std::string>("www", "");

        std::cout << "listen:" << listen << std::endl;
        std::cout << "www:" << www << std::endl;
	}

    // log-config
    std::string level = log.get<std::string>("level", "Info");
    std::string path = log.get<std::string>("path", "");
    std::string debugfile = log.get<std::string>("debugfile", "");
    std::string infofile = log.get<std::string>("infofile", "");
    std::string warnfile = log.get<std::string>("warnfile", "");
    std::string errorfile = log.get<std::string>("errorfile", "");
    std::string fatalfile = log.get<std::string>("fatalfile", "");

    std::cout << "<log-config>" << std::endl;
    std::cout << level << std::endl;
    std::cout << path << std::endl;
    std::cout << debugfile << std::endl;
    std::cout << infofile << std::endl;
    std::cout << warnfile << std::endl;
    std::cout << errorfile << std::endl;
    std::cout << fatalfile << std::endl;
}

int main()
{
    //generate_user();
    std::string file = "/home/dell/TinyWeb//src//TinyWeb.conf";
    read_user(file);
    return 0;
}
