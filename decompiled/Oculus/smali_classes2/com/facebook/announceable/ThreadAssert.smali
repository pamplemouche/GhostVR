.class public interface abstract annotation Lcom/facebook/announceable/ThreadAssert;
.super Ljava/lang/Object;
.source "ThreadAssert.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/announceable/ThreadAssert;
        requiredThread = .enum Lcom/facebook/announceable/ThreadAssert$RequiredThread;->ANY:Lcom/facebook/announceable/ThreadAssert$RequiredThread;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/announceable/ThreadAssert$RequiredThread;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract requiredThread()Lcom/facebook/announceable/ThreadAssert$RequiredThread;
.end method
