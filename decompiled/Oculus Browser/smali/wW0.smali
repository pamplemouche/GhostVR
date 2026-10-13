.class public abstract LwW0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lt01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LvW0;->a:Lt01;

    sput-object v0, LwW0;->a:Lt01;

    return-void
.end method

.method public static final synthetic a(Lorg/chromium/content_public/browser/WebContents;)LxW0;
    .locals 2

    .line 1
    new-instance v0, LxW0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LxW0;-><init>(Lorg/chromium/content_public/browser/WebContents;LuW0;)V

    return-object v0
.end method
