.class final Lretrofit/RxSupport;
.super Ljava/lang/Object;
.source "RxSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RxSupport$Invoker;
    }
.end annotation


# instance fields
.field private final errorHandler:Lretrofit/ErrorHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final requestInterceptor:Lretrofit/RequestInterceptor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptor;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lretrofit/RxSupport;->executor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p2, p0, Lretrofit/RxSupport;->errorHandler:Lretrofit/ErrorHandler;

    .line 28
    iput-object p3, p0, Lretrofit/RxSupport;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 29
    return-void
.end method


# virtual methods
.method createRequestObservable(Lretrofit/RxSupport$Invoker;)Lrx/Observable;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lretrofit/RxSupport$1;

    invoke-direct {v0, p0, p1}, Lretrofit/RxSupport$1;-><init>(Lretrofit/RxSupport;Lretrofit/RxSupport$Invoker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
