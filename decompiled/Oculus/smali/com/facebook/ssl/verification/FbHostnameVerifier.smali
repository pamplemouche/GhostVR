.class public final Lcom/facebook/ssl/verification/FbHostnameVerifier;
.super Ljava/lang/Object;
.source "FbHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ssl/verification/FbHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 189
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    .line 192
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    if-ne v1, p2, :cond_1

    .line 198
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 204
    goto :goto_0
.end method

.method static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/facebook/ssl/verification/FbHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ssl/verification/FbHostnameVerifierResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 154
    new-instance v2, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    invoke-direct {v2, p1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setCommonName(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, p3}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setSubjectAlts(Ljava/util/List;)V

    .line 159
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-direct {p0, v3, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v2, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setMatchedSubjectAltName(Z)V

    .line 165
    invoke-virtual {v2, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setNameMatched(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->success()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    .line 178
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 171
    invoke-direct {p0, v3, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v2, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setMatchedCommonName(Z)V

    .line 173
    invoke-virtual {v2, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setNameMatched(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->success()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->fail()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    goto :goto_1
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 5

    .prologue
    .line 126
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/facebook/ssl/verification/DistinguishedNameParser;

    invoke-direct {v1, v0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v0, "cn"

    invoke-virtual {v1, v0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v0, ""

    .line 133
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    invoke-direct {p0, p1, v2, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setFailMessage(Ljava/lang/String;)V

    .line 140
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing subjectAltName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 252
    :cond_1
    :goto_0
    return v0

    .line 219
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 225
    :cond_3
    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    :cond_4
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 230
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 231
    if-le v3, v4, :cond_5

    move v0, v1

    .line 232
    goto :goto_0

    .line 235
    :cond_5
    invoke-virtual {p1, v1, v2, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v1

    .line 236
    goto :goto_0

    .line 239
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v5

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    .line 241
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ge v6, v5, :cond_7

    .line 243
    const-string v6, ".clients.google.com"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v0, v1

    .line 244
    goto :goto_0

    .line 248
    :cond_7
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v5, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 249
    goto :goto_0
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 4

    .prologue
    .line 90
    const-string v0, ""

    .line 92
    const/4 v1, 0x7

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setFailMessage(Ljava/lang/String;)V

    .line 99
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing subjectAltName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ssl/verification/FbHostnameVerifierResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 109
    new-instance v1, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    invoke-direct {v1, p1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v4}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setAttemptedMatchedIpAddress(Z)V

    .line 111
    invoke-virtual {v1, p1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setCommonName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setSubjectAlts(Ljava/util/List;)V

    .line 114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v1, v4}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setMatchedIpAddress(Z)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->setNameMatched(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->success()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->fail()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 64
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->isSuccessful()Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    move v0, v1

    .line 66
    goto :goto_0
.end method
