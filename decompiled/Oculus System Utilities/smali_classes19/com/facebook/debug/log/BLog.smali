.class public Lcom/facebook/debug/log/BLog;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final logLevelCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/log/BLogLevelCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/debug/log/DefaultLoggingDelegate;->getInstance()Lcom/facebook/common/logging/LoggingDelegate;

    move-result-object v0

    sput-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->setMinimumLoggingLevel(I)V

    .line 49
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->setLoggingDelegate(Lcom/facebook/common/logging/LoggingDelegate;)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 455
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 383
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 441
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 398
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 872
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 798
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 897
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 900
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 825
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 883
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 886
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 840
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0}, Lcom/facebook/common/logging/LoggingDelegate;->getMinimumLoggingLevel()I

    move-result v0

    return v0
.end method

.method public static getLoggingDelegateClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 535
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 607
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 482
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 488
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 494
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 501
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 513
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 646
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 575
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 633
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 590
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    :cond_0
    return-void
.end method

.method public static init(Lcom/facebook/common/logging/LoggingDelegate;)V
    .locals 2
    .param p0, "loggingDelegate"    # Lcom/facebook/common/logging/LoggingDelegate;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    invoke-static {}, Lcom/facebook/debug/log/DefaultLoggingDelegate;->getInstance()Lcom/facebook/common/logging/LoggingDelegate;

    move-result-object p0

    .line 75
    :cond_0
    sget-object v1, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v1}, Lcom/facebook/common/logging/LoggingDelegate;->getMinimumLoggingLevel()I

    move-result v0

    .line 76
    .local v0, "currentLoggingLevel":I
    sput-object p0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    .line 77
    invoke-interface {p0, v0}, Lcom/facebook/common/logging/LoggingDelegate;->setMinimumLoggingLevel(I)V

    .line 78
    sget-object v1, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->setLoggingDelegate(Lcom/facebook/common/logging/LoggingDelegate;)V

    .line 79
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1047
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_0
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1053
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public static declared-synchronized registerOnLogLevelChanged(Lcom/facebook/debug/log/BLogLevelCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/facebook/debug/log/BLogLevelCallback;

    .prologue
    .line 64
    const-class v1, Lcom/facebook/debug/log/BLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLogLevel(I)V
    .locals 4
    .param p0, "logLevel"    # I

    .prologue
    .line 53
    const-class v2, Lcom/facebook/debug/log/BLog;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v1, p0}, Lcom/facebook/common/logging/LoggingDelegate;->setMinimumLoggingLevel(I)V

    .line 54
    sget-object v1, Lcom/facebook/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/log/BLogLevelCallback;

    .line 55
    .local v0, "cb":Lcom/facebook/debug/log/BLogLevelCallback;
    invoke-interface {v0, p0}, Lcom/facebook/debug/log/BLogLevelCallback;->onLogLevelChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "cb":Lcom/facebook/debug/log/BLogLevelCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 57
    :cond_0
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized unregisterOnLogLevelChanged(Lcom/facebook/debug/log/BLogLevelCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/facebook/debug/log/BLogLevelCallback;

    .prologue
    .line 68
    const-class v1, Lcom/facebook/debug/log/BLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 263
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 191
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 206
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 673
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 771
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 774
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 700
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 758
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 761
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 715
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 982
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 924
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1026
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 952
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 967
    sget-object v0, Lcom/facebook/debug/log/BLog;->sLoggingDelegate:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-static {p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    :cond_0
    return-void
.end method
