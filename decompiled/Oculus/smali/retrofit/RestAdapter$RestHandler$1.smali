.class Lretrofit/RestAdapter$RestHandler$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lretrofit/RxSupport$Invoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RestAdapter$RestHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/RestAdapter$RestHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$methodInfo:Lretrofit/RestMethodInfo;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler$1;->this$1:Lretrofit/RestAdapter$RestHandler;

    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler$1;->val$methodInfo:Lretrofit/RestMethodInfo;

    iput-object p3, p0, Lretrofit/RestAdapter$RestHandler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
