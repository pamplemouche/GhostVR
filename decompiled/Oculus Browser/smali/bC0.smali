.class public LbC0;
.super LuC0;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const-string v1, ""

    .line 1
    invoke-direct {p0, v0, v1}, LuC0;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AppNotificationStatusMessaging"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, LuC0;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, LK3;

    invoke-direct {v0, p1}, LK3;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, LK3;->a()Z

    move-result p1

    return p1
.end method
