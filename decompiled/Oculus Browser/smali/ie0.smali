.class public Lie0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lle0;


# direct methods
.method public constructor <init>(Lle0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lie0;->a:Lle0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lse0;->a(Landroid/content/Context;)Lse0;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lie0;->a:Lle0;

    .line 7
    iput-object v0, p2, Lle0;->b:Lre0;

    if-eqz p2, :cond_1

    .line 8
    new-instance v0, Lje0;

    invoke-direct {v0, p2}, Lje0;-><init>(Lle0;)V

    .line 9
    new-instance v1, Lre0;

    invoke-direct {v1, p1, v0}, Lre0;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;)V

    iput-object v1, p2, Lle0;->b:Lre0;

    .line 10
    invoke-virtual {v1}, Lre0;->a()Z

    goto :goto_0

    .line 11
    :cond_1
    throw v0

    .line 12
    :cond_2
    throw v0

    :cond_3
    :goto_0
    return-void
.end method
