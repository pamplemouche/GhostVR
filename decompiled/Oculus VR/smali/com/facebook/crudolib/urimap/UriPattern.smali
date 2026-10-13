.class public interface abstract annotation Lcom/facebook/crudolib/urimap/UriPattern;
.super Ljava/lang/Object;
.source "UriPattern.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/crudolib/urimap/UriPattern;
        componentType = .enum Lcom/facebook/common/componentmap/ComponentMapType;->NONE:Lcom/facebook/common/componentmap/ComponentMapType;
        scheme = .enum Lcom/facebook/crudolib/urimap/UriScheme;->FBINTERNAL:Lcom/facebook/crudolib/urimap/UriScheme;
        template = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract componentType()Lcom/facebook/common/componentmap/ComponentMapType;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract scheme()Lcom/facebook/crudolib/urimap/UriScheme;
.end method

.method public abstract template()Ljava/lang/String;
.end method
