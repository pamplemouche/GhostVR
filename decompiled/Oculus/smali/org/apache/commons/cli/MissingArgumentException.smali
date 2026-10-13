.class public Lorg/apache/commons/cli/MissingArgumentException;
.super Lorg/apache/commons/cli/ParseException;
.source "MissingArgumentException.java"


# static fields
.field private static final serialVersionUID:J = -0x6283133c9c298199L


# instance fields
.field private option:Lorg/apache/commons/cli/Option;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/cli/ParseException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/cli/Option;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing argument for option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/cli/MissingArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/cli/MissingArgumentException;->option:Lorg/apache/commons/cli/Option;

    .line 58
    return-void
.end method
