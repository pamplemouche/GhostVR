.class public Lcom/oculus/horizon/util/IDWebHelper;
.super Ljava/lang/Object;
.source "IDWebHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIdUriWithLocale(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/US/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchaseHistoryUri(Ljava/util/Locale;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 20
    const-string v0, "/account/order-history/"

    invoke-static {p0, v0}, Lcom/oculus/horizon/util/IDWebHelper;->getIdUriWithLocale(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getResetPasswordUri(Ljava/util/Locale;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    const-string v0, "/login/need-help/"

    invoke-static {p0, v0}, Lcom/oculus/horizon/util/IDWebHelper;->getIdUriWithLocale(Ljava/util/Locale;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
