.class public Lorg/chromium/chrome/browser/media/router/caf/CastOptionsProvider;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 11

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p1}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    const-wide v8, 0x3fa99999a0000000L    # 0.05000000074505806

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    new-instance v4, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v4}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v4, Lcom/google/android/gms/cast/LaunchOptions;->w:Z

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 5
    new-instance p1, Lcom/google/android/gms/cast/framework/CastOptions;

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZ)V

    return-object p1
.end method
