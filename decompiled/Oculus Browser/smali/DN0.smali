.class public final synthetic LDN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlU;


# instance fields
.field public final a:LOl0;


# direct methods
.method public constructor <init>(LOl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDN0;->a:LOl0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LDN0;->a:LOl0;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v1, v0, LOl0;->b:Lcm0;

    .line 2
    iget-object v1, v1, Lcm0;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    const-string v1, ""

    .line 6
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, LjO0;->b()LjO0;

    move-result-object p1

    .line 8
    iget-object p1, p1, LjO0;->b:LFN0;

    const/4 v2, 0x1

    new-array v3, v2, [LOl0;

    aput-object v0, v3, v1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1, v0}, LFN0;->a(Ljava/util/List;)V

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method
