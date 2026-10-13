.class public Lfk0;
.super Lxj0;
.source "PG"


# direct methods
.method public constructor <init>(LGj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxj0;-><init>(LGj0;)V

    .line 2
    iget-object p1, p1, LGj0;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    const-class v2, LWj0;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.chromium.chrome.browser.metrics.MediaNotificationUma.EXTRA_CLICK_SOURCE"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0b037e

    return v0
.end method
