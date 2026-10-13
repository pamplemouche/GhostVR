.class Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;
.super Landroid/webkit/WebViewClient;
.source "AddPayPalMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;->this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;-><init>(Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;)V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->RETURN_URL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v0, p2}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string v2, "PAYPAL_TOKEN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;->this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;->this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->CANCEL_URL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;->this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->setResult(I)V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;->this$0:Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->finish()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
