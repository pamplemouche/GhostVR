.class Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;
.super Ljava/lang/Object;
.source "HTTPCookieStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HTTPCookieStringBuilder"
.end annotation


# instance fields
.field private final mCookieStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public appendAttribute(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    return-object p0
.end method

.method public appendAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->mCookieStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
