.class public Lorg/apache/commons/cli/Option;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private argName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private longOpt:Ljava/lang/String;

.field private numberOfArgs:I

.field private final opt:Ljava/lang/String;

.field private optionalArg:Z

.field private required:Z

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valuesep:C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    .line 75
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/cli/Option;->type:Ljava/lang/Class;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    .line 146
    invoke-static {p1}, Lorg/apache/commons/cli/OptionValidator;->validateOption(Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    .line 152
    if-eqz p3, :cond_0

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    .line 157
    :cond_0
    iput-object p4, p0, Lorg/apache/commons/cli/Option;->description:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->acceptsArg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot add value, list full."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method private hasNoValues()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private processValue(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasValueSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->getValueSeparator()C

    move-result v1

    .line 460
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 463
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 466
    iget-object v2, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/cli/Option;->add(Ljava/lang/String;)V

    .line 484
    return-void

    .line 472
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/cli/Option;->add(Ljava/lang/String;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method acceptsArg()Z
    .locals 2

    .prologue
    .line 721
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasArgs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasOptionalArg()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addValueForProcessing(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NO_ARGS_ALLOWED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/cli/Option;->processValue(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method clearValues()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 695
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 676
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/cli/Option;

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-object v0

    .line 680
    :catch_0
    move-exception v0

    .line 682
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A CloneNotSupportedException was thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    if-ne p0, p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 632
    goto :goto_0

    .line 635
    :cond_3
    check-cast p1, Lorg/apache/commons/cli/Option;

    .line 638
    iget-object v2, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 640
    goto :goto_0

    .line 638
    :cond_5
    iget-object v2, p1, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 642
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 644
    goto :goto_0

    .line 642
    :cond_7
    iget-object v2, p1, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getArgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->argName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->description:Ljava/lang/String;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLongOpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    return-object v0
.end method

.method public getOpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    return-object v0
.end method

.method public getValueSeparator()C
    .locals 1

    .prologue
    .line 402
    iget-char v0, p0, Lorg/apache/commons/cli/Option;->valuesep:C

    return v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    invoke-direct {p0}, Lorg/apache/commons/cli/Option;->hasNoValues()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasArg()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArgs()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 371
    iget v1, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongOpt()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptionalArg()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/apache/commons/cli/Option;->optionalArg:Z

    return v0
.end method

.method public hasValueSeparator()Z
    .locals 1

    .prologue
    .line 413
    iget-char v0, p0, Lorg/apache/commons/cli/Option;->valuesep:C

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 655
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 656
    return v0

    :cond_1
    move v0, v1

    .line 654
    goto :goto_0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/apache/commons/cli/Option;->required:Z

    return v0
.end method

.method public setArgs(I)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lorg/apache/commons/cli/Option;->numberOfArgs:I

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lorg/apache/commons/cli/Option;->opt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 587
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->longOpt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasArgs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 594
    const-string v1, "[ARG...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_1
    :goto_0
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v1, p0, Lorg/apache/commons/cli/Option;->type:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 605
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/cli/Option;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    :cond_2
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const-string v1, " [ARG]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
