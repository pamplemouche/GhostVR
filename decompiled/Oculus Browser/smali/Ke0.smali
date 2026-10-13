.class public LKe0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LKe0;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, LJ/N;->Mv_K68f5(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, LKe0;->a:J

    return-void
.end method

.method public static a()LKe0;
    .locals 2

    .line 1
    sget-object v0, LKe0;->b:LKe0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 3
    new-instance v1, LKe0;

    invoke-direct {v1, v0}, LKe0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    sput-object v1, LKe0;->b:LKe0;

    .line 4
    :cond_0
    sget-object v0, LKe0;->b:LKe0;

    return-object v0
.end method
