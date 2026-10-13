.class public LIG0;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:LKG0;


# direct methods
.method public constructor <init>(LKG0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIG0;->x:LKG0;

    iput-object p2, p0, LIG0;->w:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LIG0;->x:LKG0;

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, LKG0;->g(I)V

    const-string p1, "https://www.google.com/settings/chrome/sync"

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.support.customtabs.extra.SESSION"

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, p1, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    iget-object p1, p0, LIG0;->w:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
