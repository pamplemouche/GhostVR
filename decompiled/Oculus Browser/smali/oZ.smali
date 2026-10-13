.class public final synthetic LoZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LqZ;

.field public final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(LqZ;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoZ;->a:LqZ;

    iput-object p2, p0, LoZ;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, LoZ;->a:LqZ;

    iget-object v7, p0, LoZ;->b:Landroid/content/Intent;

    check-cast p1, Lorg/chromium/content_public/browser/LoadUrlParams;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, p1, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    iget-object v3, p1, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v0 .. v7}, LqZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
