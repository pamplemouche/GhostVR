.class public abstract LfX0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lt01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LeX0;->a:Lt01;

    sput-object v0, LfX0;->a:Lt01;

    return-void
.end method

.method public static final synthetic a(Lorg/chromium/content_public/browser/WebContents;)LgX0;
    .locals 2

    .line 1
    new-instance v0, LgX0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LgX0;-><init>(Lorg/chromium/content_public/browser/WebContents;LdX0;)V

    return-object v0
.end method
