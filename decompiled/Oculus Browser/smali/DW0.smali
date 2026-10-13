.class public abstract LDW0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lt01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LCW0;->a:Lt01;

    sput-object v0, LDW0;->a:Lt01;

    return-void
.end method

.method public static final synthetic a(Lorg/chromium/content_public/browser/WebContents;)LEW0;
    .locals 1

    .line 1
    new-instance v0, LEW0;

    invoke-direct {v0, p0}, LEW0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method
