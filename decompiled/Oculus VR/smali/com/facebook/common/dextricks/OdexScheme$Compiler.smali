.class abstract Lcom/facebook/common/dextricks/OdexScheme$Compiler;
.super Ljava/lang/Object;
.source "OdexScheme.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/OdexScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Compiler"
.end annotation


# static fields
.field static final COMPILE_INCREMENTAL:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method abstract compile(Lcom/facebook/common/dextricks/InputDex;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
