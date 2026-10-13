.class abstract Lcom/facebook/common/dextricks/OdexScheme;
.super Ljava/lang/Object;
.source "OdexScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/OdexScheme$Compiler;
    }
.end annotation


# static fields
.field static final ODEX_SCHEME_BATCH_ONLY:I = 0x1

.field static final ODEX_SCHEME_INVALID:I = 0x2

.field static final ODEX_SCHEME_NOT_OPTIMAL:I = 0x8

.field static final ODEX_SCHEME_OPTIMIZATION_IS_CRAZY_EXPENSIVE:I = 0x4

.field static final ODEX_SCHEME_SKIP_COMPILER:I = 0x10


# instance fields
.field final expectedFiles:[Ljava/lang/String;

.field final flags:I


# direct methods
.method protected constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    .line 37
    iput-object p2, p0, Lcom/facebook/common/dextricks/OdexScheme;->expectedFiles:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method abstract configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;
        }
    .end annotation
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method loadInformationalStatus(Ljava/io/File;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method loadNotOptimized(J)Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method abstract makeCompiler(Lcom/facebook/common/dextricks/DexStore;I)Lcom/facebook/common/dextricks/OdexScheme$Compiler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method needOptimization(J)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method optimize(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
