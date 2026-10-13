.class public LLC0;
.super LIC0;
.source "PG"


# instance fields
.field public final synthetic a:LNC0;


# direct methods
.method public synthetic constructor <init>(LNC0;LAC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLC0;->a:LNC0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LIC0;-><init>(LNC0;LAC0;)V

    return-void
.end method


# virtual methods
.method public a(LJC0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LLC0;->a:LNC0;

    .line 2
    iget-object v0, v0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    .line 3
    new-instance v1, LKC0;

    invoke-direct {v1, p0, p1}, LKC0;-><init>(LLC0;LJC0;)V

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1}, LJ/N;->MmKkVwoS(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
