.class public LK60;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LJ60;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK60;->a:LJ60;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, v0, LJ60;->a:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, LK60;->a:LJ60;

    iget-object p1, p1, LJ60;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LK60;->a:LJ60;

    return-void
.end method
