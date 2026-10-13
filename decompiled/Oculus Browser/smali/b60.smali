.class public Lb60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lm81;


# static fields
.field public static x:Lb60;


# instance fields
.field public final w:LTT0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LTT0;LZ50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb60;->w:LTT0;

    .line 3
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Lm81;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lb60;->w:LTT0;

    check-cast p1, LeB0;

    .line 2
    iget-object p1, p1, LeB0;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->c()V

    .line 8
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->b(Lm81;)V

    const/4 p1, 0x0

    .line 9
    sput-object p1, Lb60;->x:Lb60;

    return-void
.end method
