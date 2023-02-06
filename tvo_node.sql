BEGIN;

DROP TABLE IF EXISTS import.tvo_node;
CREATE TABLE import.tvo_node (
	id                 BIGINT PRIMARY KEY,
	vertrag_id         BIGINT,
	parent_id          BIGINT,
	wirksam_von        TIMESTAMP,
	wirksam_bis        TIMESTAMP,
	waj_node_id        VARCHAR(255),
	adm_vertrag_id     VARCHAR(255),
	waj_node_txk       VARCHAR(255),
	waj_node_parent_id VARCHAR(255)
);
CREATE INDEX import_tvo_node_id ON import.tvo_node USING btree(id);
CREATE INDEX import_tvo_node_vertrag_id ON import.tvo_node USING btree(vertrag_id);
CREATE INDEX import_tvo_node_parent_id ON import.tvo_node USING btree(parent_id);

COMMIT;
