.class Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;
.super Ljava/lang/Object;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/mp4parser/aspectj/lang/ProceedingJoinPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
    }
.end annotation


# instance fields
.field _this:Ljava/lang/Object;

.field args:[Ljava/lang/Object;

.field staticPart:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    .line 87
    iput-object p2, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    .line 89
    iput-object p4, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
