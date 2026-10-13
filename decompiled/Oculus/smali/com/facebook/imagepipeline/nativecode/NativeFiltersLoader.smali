.class public Lcom/facebook/imagepipeline/nativecode/NativeFiltersLoader;
.super Ljava/lang/Object;
.source "NativeFiltersLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "native-filters"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 17
    return-void
.end method
