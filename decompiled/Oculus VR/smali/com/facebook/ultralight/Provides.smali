.class public interface abstract annotation Lcom/facebook/ultralight/Provides;
.super Ljava/lang/Object;
.source "Provides.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/ultralight/Provides;
        bindingType = .enum Lcom/facebook/ultralight/Provides$BindingType;->FINAL:Lcom/facebook/ultralight/Provides$BindingType;
        valueType = .enum Lcom/facebook/ultralight/Provides$ValueType;->UNIQUE:Lcom/facebook/ultralight/Provides$ValueType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ultralight/Provides$BindingType;,
        Lcom/facebook/ultralight/Provides$ValueType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
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
.method public abstract bindingType()Lcom/facebook/ultralight/Provides$BindingType;
.end method

.method public abstract valueType()Lcom/facebook/ultralight/Provides$ValueType;
.end method
