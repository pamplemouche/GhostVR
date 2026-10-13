.class public abstract Lcom/facebook/acra/ExceptionTranslationHook;
.super Ljava/lang/Object;
.source "ExceptionTranslationHook.java"


# annotations
.annotation build Lcom/facebook/annotations/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/ExceptionTranslationHook$Api19Utils;
    }
.end annotation


# instance fields
.field volatile next:Lcom/facebook/acra/ExceptionTranslationHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static staplePreviousException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    if-eq p0, p1, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    const/4 v0, 0x1

    .line 71
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 72
    invoke-static {p0, p1}, Lcom/facebook/acra/ExceptionTranslationHook$Api19Utils;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 75
    :cond_1
    return-object p0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
