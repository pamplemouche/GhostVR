.class public abstract Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;
.super Ljava/lang/Object;
.source "MobileConfigDumperBase.java"

# interfaces
.implements Lcom/facebook/stetho/dumpapp/DumperPlugin;


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


# instance fields
.field protected mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCommandName:Ljava/lang/String;

.field protected mDumperContext:Lcom/facebook/stetho/dumpapp/DumperContext;

.field protected mWriter:Ljava/io/PrintStream;


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

.method private static getNonPrefixClientDrivenConfigName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "QE_"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "MC_"

    aput-object v3, v1, v2

    .line 193
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 194
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 195
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_0
    return-object p0

    .line 193
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doClearUserData(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)V
    .locals 2
    .param p2    # Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->clearCurrentUserData()V

    .line 423
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Session data have been cleared. Restart the app to make sure changes take effect."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-interface {p2}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->clearCurrentUserData()V

    .line 430
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Sessionless data have been cleared. Restart the app to make sure changes take effect."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    :goto_1
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Session mobileConfig is not running; no changes made."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Sessionless mobileConfig is not running; no changes made."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected doOverride(Lcom/facebook/mobileconfig/metadata/ParamsMapList;Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 205
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mArgs:Ljava/util/List;

    invoke-static {v0, v8}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mDumperContext:Lcom/facebook/stetho/dumpapp/DumperContext;

    .line 209
    invoke-virtual {v1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getParser()Lorg/apache/commons/cli/CommandLineParser;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/cli/Options;

    invoke-direct {v2}, Lorg/apache/commons/cli/Options;-><init>()V

    const-class v3, Ljava/lang/String;

    .line 210
    invoke-static {v0, v3}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lorg/apache/commons/cli/CommandLine;->getArgs()[Ljava/lang/String;

    move-result-object v0

    .line 217
    array-length v1, v0

    if-gt v1, v8, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Usage: override <config_name> <param_name> <new_value>\n       override <config_name>.<param_name> <new_value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    array-length v1, v0

    if-ne v1, v10, :cond_3

    .line 226
    aget-object v1, v0, v9

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 227
    array-length v2, v1

    if-eq v2, v10, :cond_1

    .line 228
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Usage: override <config_name> <param_name> <new_value>\n       override <config_name>.<param_name> <new_value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    aget-object v2, v1, v9

    .line 232
    aget-object v1, v1, v8

    .line 233
    aget-object v0, v0, v8

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 240
    :goto_1
    const/4 v4, 0x0

    .line 242
    iget-object v0, p1, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;

    .line 243
    iget-object v6, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configName:Ljava/lang/String;

    .line 244
    invoke-static {v6}, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->getNonPrefixClientDrivenConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    iget-object v6, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramName:Ljava/lang/String;

    .line 245
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    move-object v4, v0

    .line 248
    goto :goto_2

    .line 235
    :cond_3
    aget-object v2, v0, v9

    .line 236
    aget-object v1, v0, v8

    .line 237
    aget-object v0, v0, v10

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 249
    :cond_4
    if-nez v4, :cond_5

    .line 250
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid config name/param name combination "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Check schema for correct name. If the config_name/param_name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contain spaces. Replaces the spaces with underscores"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Usage: override <config_name> <param_name> <new_value>\n       override <config_name>.<param_name> <new_value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    iget v0, v4, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramType:I

    .line 262
    invoke-virtual {v4}, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->getSpecifier()J

    move-result-wide v4

    .line 263
    packed-switch v0, :pswitch_data_0

    .line 289
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Unsupported param type"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :pswitch_0
    invoke-virtual {p2, v4, v5, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->setOverride(JLjava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v6, "Override set for %s_%s(%s) to %s\n"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {p2, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->getOverrideString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 266
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 271
    :pswitch_1
    invoke-static {v1}, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, v4, v5, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->setOverride(JZ)V

    .line 272
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v6, "Override set for %s_%s(%s) to %b\n"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {p2, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->getOverrideBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v11

    .line 272
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 277
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->setOverride(JD)V

    .line 278
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v6, "Override set for %s_%s(%s) to %f\n"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {p2, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->getOverrideDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v11

    .line 278
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 283
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->setOverride(JJ)V

    .line 284
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v6, "Override set for %s_%s(%s) to %d\n"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {p2, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigValueUtil;->getOverrideLong(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v11

    .line 284
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    goto/16 :goto_3

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected doPrint(Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;Lcom/facebook/mobileconfig/metadata/ParamsMapList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 319
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mArgs:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mDumperContext:Lcom/facebook/stetho/dumpapp/DumperContext;

    .line 323
    invoke-virtual {v1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getParser()Lorg/apache/commons/cli/CommandLineParser;

    move-result-object v1

    sget-object v2, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTIONS:Lorg/apache/commons/cli/Options;

    const-class v3, Ljava/lang/String;

    .line 324
    invoke-static {v0, v3}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    sget-object v1, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->PRINT_OPTION_VERBOSE:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/cli/CommandLine;->getArgList()Ljava/util/List;

    move-result-object v0

    .line 332
    const-string v1, ""

    invoke-static {v0, v8, v1}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 335
    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 337
    iget-object v0, p2, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;

    .line 338
    iget-boolean v7, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->isSessionless:Z

    if-eqz v7, :cond_0

    .line 339
    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 345
    :cond_1
    const-string v3, ""

    .line 347
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, p1

    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;->getSimpleLogString(Ljava/lang/String;ZLjava/lang/String;ZLcom/google/common/collect/ImmutableList;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v4, "Sessionless configs:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :cond_2
    const-string v3, ""

    .line 355
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, p1

    move v4, v8

    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/mobileconfig/factory/MobileConfigDebugUtil;->getSimpleLogString(Ljava/lang/String;ZLjava/lang/String;ZLcom/google/common/collect/ImmutableList;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v2, "Session-based configs:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    :cond_3
    return-void
.end method

.method protected doPrintSchema(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getSchemaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method protected doStatus(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)V
    .locals 2
    .param p2    # Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 298
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "session mobileconfig is running"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "sessionless mobileconfig is running"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    :goto_1
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "session mobileconfig is not running"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "sessionless mobileconfig is not running"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected doUsage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    const-string v0, "dumpapp mobileconfig"

    .line 124
    const-string v0, "Usage: dumpapp mobileconfig"

    .line 125
    const-string v1, "       dumpapp mobileconfig"

    .line 126
    const-string v2, "    "

    .line 130
    iget-object v3, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v4, "%s <command>\n"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 131
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s status\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 132
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s print [-v|--verbose] [regex]\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 133
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s update\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 134
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s clear\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 135
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s import <task_number>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 136
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s import_user <id_or_unixname>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 137
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s override <config_name> <param_name> <new_value>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 138
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s override <config_name>.<param_name> <new_value>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 139
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s clear_overrides\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 141
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s qe print [-g|--groups, -m|--mine, -p|--params, -s|sessionless] [universe_regex]\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 144
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s qe set <universe> <experiment:group>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 145
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s qe unset <universe>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 146
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v3, "%s qe remove <universe>\n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 151
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 152
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s status: Print whether or not MobileConfig is currently enabled.\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 153
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 154
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s print: Print all matching MobileConfig fields and their values\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 155
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s -v|--verbose: print specifier and loggingId\n"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 156
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 157
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s update: Triggers an update for all mobileconfigs\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 158
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 159
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s clear: Clears sessionless and current session data.\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 160
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 161
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s import: Import MobileConfig from a task.\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 162
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 163
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s import_user: Import user\'s mobileconfig through user id or unixname.\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 165
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 166
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s override: Set override value\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 167
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 168
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s clear_overrides: Delete all local overrides\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 169
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 171
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s qe print: Print QE universe information\n"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "dumpapp mobileconfig"

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 172
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s -g|--groups: print all experiments and groups\n"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 173
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s -m|--mine: print only universes with assigned experiments\n"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 174
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s -p|--params: print associated params\n"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 175
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 176
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s qe set: Override into a given QE group\n"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "dumpapp mobileconfig"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 177
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 178
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s qe unset: Clear override for a given universe\n"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "dumpapp mobileconfig"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 179
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 180
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    const-string v1, "%s qe remove: Force into unassigned state for a given universe\n"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "dumpapp mobileconfig"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 181
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 182
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "mobileconfig"

    return-object v0
.end method

.method protected initialize(Lcom/facebook/stetho/dumpapp/DumperContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpException;
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mDumperContext:Lcom/facebook/stetho/dumpapp/DumperContext;

    .line 116
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getStdout()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mWriter:Ljava/io/PrintStream;

    .line 117
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getArgsAsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mArgs:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mArgs:Ljava/util/List;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/mobileconfig/dumper/MobileConfigDumperBase;->mCommandName:Ljava/lang/String;

    .line 119
    return-void
.end method
