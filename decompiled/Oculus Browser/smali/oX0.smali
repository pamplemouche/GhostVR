.class public LoX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lt01;


# direct methods
.method public synthetic constructor <init>(LmX0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, LlX0;

    invoke-direct {v0, p1}, LlX0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, LkX0;

    invoke-direct {v0, p1}, LkX0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    :goto_0
    return-object v0
.end method
