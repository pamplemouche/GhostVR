.class public interface abstract annotation Lcom/facebook/crudolib/urimap/UriMatchPatterns;
.super Ljava/lang/Object;
.source "UriMatchPatterns.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/facebook/metagen/CodeGeneratorMetadataAnnotation;
    generator = "com.facebook.metagen.generator.custom.DfaUriMapCodeGenerator"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/crudolib/urimap/UriMatchPatterns;
        callerScope = .enum Lcom/facebook/crudolib/urimap/UriCallerScope;->PUBLIC:Lcom/facebook/crudolib/urimap/UriCallerScope;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract callerScope()Lcom/facebook/crudolib/urimap/UriCallerScope;
.end method
