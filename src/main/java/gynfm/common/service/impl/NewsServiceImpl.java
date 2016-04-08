package gynfm.common.service.impl;

import gynfm.common.data.dao.NewsDAO;
import gynfm.common.data.dataobject.NewsDO;
import gynfm.common.service.NewsService;
import gynfm.common.service.model.NewsModel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	NewsDAO newsDAO;
	@Override
	public List<NewsModel> getAllNews() {
		List<NewsDO> newsDOs = newsDAO.findAll();
		List<NewsModel> newsModels =new ArrayList<NewsModel>();
		for (NewsDO newsDO : newsDOs) {
			NewsModel newsModel = new NewsModel();
			BeanUtils.copyProperties(newsDO, newsModel);
			newsModels.add(newsModel);
		}
		//System.out.println(newsModels);
		return newsModels;
	}
	@Override
	public NewsModel getNewsById(int id) {
		NewsModel newsModel = new NewsModel();
		NewsDO newsDO = newsDAO.findById(id);
		BeanUtils.copyProperties(newsDO, newsModel);
		return newsModel;
	}

}
