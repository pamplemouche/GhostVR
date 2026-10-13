.class public abstract Lu60;
.super LY10;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android:activity."

    goto :goto_0

    :cond_0
    const-string v0, "android:"

    :goto_0
    sput-object v0, Lu60;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "org.chromium.chrome.browser.customtabs.EXTRA_UI_TYPE"

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, LqZ;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "org.chromium.chrome.browser.customtabs.EXTRA_UI_TYPE"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, LqZ;->a(Landroid/content/Intent;)V

    return-void
.end method
