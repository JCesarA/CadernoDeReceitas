package com.recipe.appJulioReceitas.controller;

import org.springframework.stereotype.Controller;

import com.recipe.appJulioReceitas.model.domain.Receita;
import com.recipe.appJulioReceitas.model.service.FotoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FotoController {

    private static final Logger logger = LoggerFactory.getLogger("FotoController.class");

    @GetMapping("/indexFoto")
    public String test() {
        return "indexFoto";
    }

    @PostMapping("/fileupload")
    public String fileUpload(@RequestParam("nomeFoto") String nomeFoto, @RequestParam("file") MultipartFile file) {
        try {
            logger.info("Nome da foto = " + nomeFoto);
            byte[] foto = file.getBytes();
            Receita model = new Receita(nomeFoto, foto);
            int saveFoto = FotoService.saveFoto(model);
            if (saveFoto == 1) {
                return "success";
            } else {
                return "error";
            }
        } catch (Exception e) {
            logger.error("ERROR", e);
            return "error";
        }
    }

    @GetMapping("/getDetail/{id}")
    public String getDbDetails(@PathVariable String id, Model model) {
        try {
            logger.info("Id= " + id);
            Receita imagesObj = FotoService.getFoto(Long.parseLong(id));
            model.addAttribute("id", imagesObj.getId());
            model.addAttribute("nomeFoto", imagesObj.getNomeFoto());
            byte[] encode = java.util.Base64.getEncoder().encode(imagesObj.getFoto());
            model.addAttribute("foto", new String(encode, "UTF-8"));
            return "fotodetails";
        } catch (Exception e) {
            logger.error("Error", e);
            model.addAttribute("message", "Error in getting foto");
            return "redirect:/";
        }
    }
}