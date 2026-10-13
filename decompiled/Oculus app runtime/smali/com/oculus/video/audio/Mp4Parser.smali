.class public Lcom/oculus/video/audio/Mp4Parser;
.super Ljava/lang/Object;
.source "Mp4Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/audio/Mp4Parser$ParserException;
    }
.end annotation


# static fields
.field private static final FOCUS_ENABLED_ATTRIBUTE:Ljava/lang/String; = "enabled"

.field private static final FOCUS_ENABLED_DEFAULT:Z = false

.field private static final FOCUS_TAG:Ljava/lang/String; = "focus"

.field private static final FOCUS_WIDTH_DEGREES_ATTRIBUTE:Ljava/lang/String; = "focusWidthDegrees"

.field private static final FOCUS_WIDTH_DEGREES_DEFAULT:F = 0.0f

.field private static final OFF_FOCUS_LEVEL_ATTRIBUTE:Ljava/lang/String; = "offFocusLevel"

.field private static final OFF_FOCUS_LEVEL_DB_ATTRIBUTE:Ljava/lang/String; = "offFocusLevelDB"

.field private static final OFF_FOCUS_LEVEL_DB_DEFAULT:F = 0.0f

.field private static final OFF_FOCUS_LEVEL_DEFAULT:F = 1.0f


# instance fields
.field private final mDocument:Lorg/w3c/dom/Document;

.field private final mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/audio/Mp4Parser$ParserException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/audio/Mp4Parser;->mDocument:Lorg/w3c/dom/Document;

    .line 39
    iget-object p1, p0, Lcom/oculus/video/audio/Mp4Parser;->mDocument:Lorg/w3c/dom/Document;

    const-string v0, "focus"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Lcom/oculus/video/audio/Mp4Parser$ParserException;

    invoke-direct {v0, p1}, Lcom/oculus/video/audio/Mp4Parser$ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getFocusEnabled()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v0, :cond_0

    const-string v1, "enabled"

    .line 52
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFocusWidthDegrees()F
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v0, :cond_0

    const-string v1, "focusWidthDegrees"

    .line 93
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOffFocusLevel()F
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v0, :cond_0

    const-string v1, "offFocusLevel"

    .line 63
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getOffFocusLeveldB()F
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/oculus/video/audio/Mp4Parser;->mFocusNodeAttributes:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v0, :cond_0

    const-string v1, "offFocusLevelDB"

    .line 78
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
