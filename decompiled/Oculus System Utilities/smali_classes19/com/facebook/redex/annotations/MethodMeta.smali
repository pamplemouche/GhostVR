.class public interface abstract annotation Lcom/facebook/redex/annotations/MethodMeta;
.super Ljava/lang/Object;
.source "MethodMeta.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/redex/annotations/MethodMeta;
        constantTypes = ""
        constantValues = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract constantTypes()Ljava/lang/String;
.end method

.method public abstract constantValues()Ljava/lang/String;
.end method
