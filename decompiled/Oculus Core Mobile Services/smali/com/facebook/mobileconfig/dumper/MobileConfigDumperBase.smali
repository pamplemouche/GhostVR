.class public abstract Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;
.super Ljava/lang/Object;
.source "MobileConfigDumperBase.java"


# static fields
.field protected static final GK_OPTIONS:Lorg/apache/commons/cli/Options;

.field protected static final GK_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;

.field protected static final PRINT_OPTIONS:Lorg/apache/commons/cli/Options;

.field protected static final PRINT_OPTION_VERBOSE:Lorg/apache/commons/cli/Option;

.field protected static final QE_OPTIONS:Lorg/apache/commons/cli/Options;

.field protected static final QE_OPTION_GROUPS:Lorg/apache/commons/cli/Option;

.field protected static final QE_OPTION_MINE:Lorg/apache/commons/cli/Option;

.field protected static final QE_OPTION_PARAMS:Lorg/apache/commons/cli/Option;

.field protected static final QE_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "v"

    const-string v2, "verbose"

    const-string v3, "Print verbose output"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTION_VERBOSE:Lorg/apache/commons/cli/Option;

    .line 65
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "s"

    const-string v2, "sessionless"

    const-string v3, "Whether or not the GK is sessionless, default is false"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->GK_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;

    .line 76
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "g"

    const-string v2, "groups"

    const-string v3, "Print groups"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_GROUPS:Lorg/apache/commons/cli/Option;

    .line 77
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "m"

    const-string v2, "mine"

    const-string v3, "Print only assigned universe"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_MINE:Lorg/apache/commons/cli/Option;

    .line 79
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "p"

    const-string v2, "params"

    const-string v3, "Print associated params"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_PARAMS:Lorg/apache/commons/cli/Option;

    .line 81
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "s"

    const-string v2, "sessionless"

    const-string v3, "Whether or not the QE is sessionless, default is false"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;

    .line 90
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTIONS:Lorg/apache/commons/cli/Options;

    .line 91
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTION_VERBOSE:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 93
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->GK_OPTIONS:Lorg/apache/commons/cli/Options;

    .line 94
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->GK_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->GK_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 96
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTIONS:Lorg/apache/commons/cli/Options;

    .line 97
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_GROUPS:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 98
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_MINE:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 99
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_PARAMS:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 100
    sget-object v0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTIONS:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->QE_OPTION_SESSIONLESS:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
