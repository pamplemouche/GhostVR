.class public final synthetic LB60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field public final x:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput p2, p0, LB60;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LB60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget v1, p0, LB60;->x:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v3, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v3, v1}, Lo60;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/browser/customtabs/CustomTabsSessionToken;

    const-string v4, "onWarmupCompleted"

    .line 3
    invoke-virtual {v0, v3, v4, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    throw v2
.end method
