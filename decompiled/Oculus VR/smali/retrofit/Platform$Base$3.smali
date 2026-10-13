.class Lretrofit/Platform$Base$3;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/RestAdapter$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Base;->defaultLog()Lretrofit/RestAdapter$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lretrofit/Platform$Base$3;->this$0:Lretrofit/Platform$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
