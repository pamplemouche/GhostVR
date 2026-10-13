.class public Lm20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ln20;


# direct methods
.method public constructor <init>(Ln20;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm20;->x:Ln20;

    iput-object p2, p0, Lm20;->w:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm20;->x:Ln20;

    .line 2
    iget-object v0, v0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm20;->x:Ln20;

    .line 5
    iget-object v0, v0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    .line 6
    aget-object v0, v0, v1

    iget-object v1, p0, Lm20;->w:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/chromium/content_public/browser/MessagePort;->a(Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V

    :cond_1
    :goto_0
    return-void
.end method
