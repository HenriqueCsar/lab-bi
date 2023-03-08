# /* Reposta */

WITH XMLNAMESPACES('' AS soap,
                   '' AS ns,
                   '' AS ns2)
SELECT distinct top 100 try_cast(
        SUBSTRING(resposta, 1, CHARINDEX('</CodigoOperacao>', resposta) + 16)+
        '</ResultadoXml></SetPolicyEvalValuesObjectXmlResponse></soap:Body></soap:Envelope>'
     as xml).value('(/soap:Envelope/soap:Body/ns:SetPolicyEvalValuesObjectXmlResponse/ns2:ResultadoXml/ns2:CodigoOperacao)[1]', 'VARCHAR(10)') AS CodigoOperacao,

FROM tabela a with(nolock)
where resposta like '%operacao%'
