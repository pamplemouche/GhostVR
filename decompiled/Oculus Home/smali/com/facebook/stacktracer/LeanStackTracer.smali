.class public Lcom/facebook/stacktracer/LeanStackTracer;
.super Ljava/lang/Object;
.source "LeanStackTracer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;
    }
.end annotation


# static fields
.field private static final BLACKLISTED_DEVICE:Ljava/lang/String; = "i4d"

.field private static final OREO_2:I = 0x1b

.field private static final PIE:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "LeanStackTracer"

.field private static sStackTracerLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->loadStackTracerLib()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectRawStackTrace(Ljava/lang/Throwable;)Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, "rawStackTrace":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 76
    invoke-static {p0, v2}, Lcom/facebook/stacktracer/LeanStackTracer;->parseRawStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 82
    .end local v1    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "rawStackTrace":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 77
    .restart local v1    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "rawStackTrace":Ljava/lang/Object;
    :cond_1
    new-instance v4, Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;

    invoke-direct {v4, v1}, Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 79
    .end local v1    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "rawStackTrace":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e1":Ljava/lang/Exception;
    const-string v4, "LeanStackTracer"

    const-string v5, "Error thrown while collecting lean stack trace:"

    invoke-static {v4, v0, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static detectRawStackTraceField()Ljava/lang/reflect/Field;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 310
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, "f":Ljava/lang/reflect/Field;
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 311
    const-string v4, "stackState"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "backtrace"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v0

    .line 310
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    const-string v1, "LeanStackTracer"

    const-string v2, "Couldn\'t locate raw stack trace field."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static native disableJniLogException()J
.end method

.method private static native disableJniLogExceptionNougat()J
.end method

.method private static disableThreadPreHandlerIfExists()V
    .locals 4

    .prologue
    .line 358
    :try_start_0
    const-class v2, Ljava/lang/Thread;

    const-string v3, "uncaughtExceptionPreHandler"

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    .local v1, "uncaughtExceptionPreHandler":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const-string v2, "LeanStackTracer"

    const-string v3, "Disabled UncaughtExceptionPreHandler successfully"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "LeanStackTracer"

    const-string v3, "No PreHandler, nothing to do."

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "LeanStackTracer"

    const-string v3, "Disabling uncaughtExceptionPreHandler failed."

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native getArtDexSignature(J)J
.end method

.method private static native getArtMarshmallowDexSignature(J)J
.end method

.method private static native getArtMarshmallowMethodIdx(J)J
.end method

.method private static native getArtNougatOreoMethodIdx(J)J
.end method

.method private static native getDalvikMethodIdx(J)J
.end method

.method private static getDexSignatureAsLong([B)J
    .locals 2
    .param p0, "signature"    # [B

    .prologue
    .line 236
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 242
    if-nez p0, :cond_0

    .line 243
    const-string v1, "LeanStackTracer"

    const-string v2, "Trying to read field %s of null object"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    .line 246
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 247
    .local v0, "declaringClassField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLollipopDexSignature(Ljava/lang/Object;)J
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v5, "declaringClass"

    invoke-static {p0, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "declaringClass":Ljava/lang/Object;
    const-string v5, "dexCache"

    invoke-static {v0, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "dexCache":Ljava/lang/Object;
    const-string v5, "dex"

    invoke-static {v2, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, "dex":Ljava/lang/Object;
    const-string v5, "tableOfContents"

    invoke-static {v1, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 228
    .local v4, "tableOfContents":Ljava/lang/Object;
    const-string v5, "signature"

    invoke-static {v4, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, "signature":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 230
    const-wide v6, 0xffffffffL

    .line 232
    .end local v3    # "signature":Ljava/lang/Object;
    :goto_0
    return-wide v6

    .restart local v3    # "signature":Ljava/lang/Object;
    :cond_0
    check-cast v3, [B

    .end local v3    # "signature":Ljava/lang/Object;
    check-cast v3, [B

    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->getDexSignatureAsLong([B)J

    move-result-wide v6

    goto :goto_0
.end method

.method private static getNougatOreoDexSignature(Ljava/lang/Object;)J
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v2, "dexCache"

    invoke-static {p0, v2}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "dexCache":Ljava/lang/Object;
    const-string v2, "dexFile"

    invoke-static {v0, v2}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    .local v1, "dexFile":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "dexFile":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtDexSignature(J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1    # "dexFile":Ljava/lang/Object;
    :cond_0
    const-wide v2, 0xffffffffL

    goto :goto_0
.end method

.method public static getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 321
    sget-boolean v2, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v2, :cond_1

    .line 322
    const-string v2, "LeanStackTracer"

    const-string v3, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->detectRawStackTraceField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 326
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static handleArtLollipopRawStackTrace([Ljava/lang/Object;)Ljava/util/List;
    .locals 12
    .param p0, "rawStackTrace"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 195
    array-length v9, p0

    if-gt v9, v11, :cond_0

    .line 196
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "Lollipop rawStackTrace (almost) empty"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 199
    :cond_0
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p0, v9

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 200
    .local v5, "offsets":[I
    array-length v9, v5

    array-length v10, p0

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_1

    .line 201
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "Lollipop offsets not sufficient"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 206
    :cond_1
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "dexMethodIndex"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 207
    .local v1, "dexMethodIndexField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_2

    .line 211
    aget-object v9, p0, v4

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "dexMethodIndex":I
    aget-object v9, p0, v4

    invoke-static {v9}, Lcom/facebook/stacktracer/LeanStackTracer;->getLollipopDexSignature(Ljava/lang/Object;)J

    move-result-wide v2

    .line 213
    .local v2, "dexSignature":J
    invoke-static {v0}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v10

    const/16 v9, 0x20

    shl-long/2addr v10, v9

    or-long v6, v10, v2

    .line 215
    .local v6, "methodSignature":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    aget v9, v5, v4

    invoke-static {v9}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "dexMethodIndex":I
    .end local v2    # "dexSignature":J
    .end local v6    # "methodSignature":J
    :cond_2
    return-object v8
.end method

.method private static handleArtNougatOreoPieRawStackTrace([Ljava/lang/Object;)Ljava/util/List;
    .locals 14
    .param p0, "rawStackTrace"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 277
    array-length v11, p0

    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    .line 278
    new-instance v11, Ljava/security/InvalidParameterException;

    const-string v12, "Nougat/Oreo rawStackTrace (almost) empty"

    invoke-direct {v11, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 281
    :cond_0
    const/4 v11, 0x0

    aget-object v11, p0, v11

    check-cast v11, [I

    move-object v0, v11

    check-cast v0, [I

    .line 282
    .local v0, "addressesAndOffsets":[I
    array-length v11, v0

    array-length v12, p0

    add-int/lit8 v12, v12, -0x1

    mul-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_1

    .line 283
    new-instance v11, Ljava/security/InvalidParameterException;

    const-string v12, "Nougat/Oreo offsets not sufficient"

    invoke-direct {v11, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 286
    :cond_1
    array-length v11, v0

    div-int/lit8 v10, v11, 0x2

    .line 287
    .local v10, "stackLength":I
    new-instance v9, Ljava/util/ArrayList;

    mul-int/lit8 v11, v10, 0x2

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v9, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 290
    add-int/lit8 v11, v1, 0x1

    aget-object v11, p0, v11

    invoke-static {v11}, Lcom/facebook/stacktracer/LeanStackTracer;->getNougatOreoDexSignature(Ljava/lang/Object;)J

    move-result-wide v4

    .line 291
    .local v4, "dexSignature":J
    aget v11, v0, v1

    invoke-static {v11}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtNougatOreoMethodIdx(J)J

    move-result-wide v2

    .line 292
    .local v2, "dexMethodIndex":J
    const/16 v11, 0x20

    shl-long v12, v2, v11

    or-long v6, v12, v4

    .line 293
    .local v6, "methodSignature":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int v11, v10, v1

    aget v8, v0, v11

    .line 295
    .local v8, "offset":I
    invoke-static {v8}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "dexMethodIndex":J
    .end local v4    # "dexSignature":J
    .end local v6    # "methodSignature":J
    .end local v8    # "offset":I
    :cond_2
    return-object v9
.end method

.method private static handleDalvikRawStackTrace([I)Ljava/util/List;
    .locals 8
    .param p0, "rawStackTrace"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    array-length v6, p0

    div-int/lit8 v5, v6, 0x2

    .line 181
    .local v5, "stackLength":I
    new-instance v4, Ljava/util/ArrayList;

    mul-int/lit8 v6, v5, 0x2

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 184
    mul-int/lit8 v6, v0, 0x2

    aget v6, p0, v6

    invoke-static {v6}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/stacktracer/LeanStackTracer;->getDalvikMethodIdx(J)J

    move-result-wide v2

    .line 185
    .local v2, "methodSignature":J
    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v1, p0, v6

    .line 186
    .local v1, "offset":I
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v1}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "offset":I
    .end local v2    # "methodSignature":J
    :cond_0
    return-object v4
.end method

.method private static handleMarshmallowArtRawStackTrace([I)Ljava/util/List;
    .locals 21
    .param p0, "rawStackTrace"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const-class v15, Ljava/lang/Class;

    invoke-static {v15}, Lcom/facebook/stacktracer/LeanStackTracer;->verifyClassObjectNameMarshmallow(Ljava/lang/Object;)I

    move-result v14

    .line 253
    .local v14, "verifyResult":I
    if-eqz v14, :cond_0

    .line 254
    new-instance v15, Ljava/lang/IllegalStateException;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "verifyResult: %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 257
    :cond_0
    move-object/from16 v0, p0

    array-length v15, v0

    div-int/lit8 v13, v15, 0x2

    .line 258
    .local v13, "stackLength":I
    new-instance v12, Ljava/util/ArrayList;

    mul-int/lit8 v15, v13, 0x2

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v13, :cond_1

    .line 261
    aget v15, p0, v6

    invoke-static {v15}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v8

    .line 262
    .local v8, "method":J
    invoke-static {v8, v9}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtMarshmallowMethodIdx(J)J

    move-result-wide v2

    .line 263
    .local v2, "dexMethodIndex":J
    invoke-static {v8, v9}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtMarshmallowDexSignature(J)J

    move-result-wide v4

    .line 264
    .local v4, "dexSignature":J
    const/16 v15, 0x20

    shl-long v16, v2, v15

    or-long v10, v16, v4

    .line 265
    .local v10, "methodSignature":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int v15, v13, v6

    aget v7, p0, v15

    .line 268
    .local v7, "offset":I
    invoke-static {v7}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "dexMethodIndex":J
    .end local v4    # "dexSignature":J
    .end local v7    # "offset":I
    .end local v8    # "method":J
    .end local v10    # "methodSignature":J
    :cond_1
    return-object v12
.end method

.method private static handleRawStackTrace(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "rawStackTrace"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 158
    const-string v0, "LeanStackTracer"

    const-string v1, "Unsupported Android version, not extracting raw stack trace."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    check-cast p0, [I

    .end local p0    # "rawStackTrace":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleDalvikRawStackTrace([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 145
    .restart local p0    # "rawStackTrace":Ljava/lang/Object;
    :pswitch_1
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "rawStackTrace":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleArtLollipopRawStackTrace([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 148
    .restart local p0    # "rawStackTrace":Ljava/lang/Object;
    :pswitch_2
    check-cast p0, [I

    .end local p0    # "rawStackTrace":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleMarshmallowArtRawStackTrace([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 155
    .restart local p0    # "rawStackTrace":Ljava/lang/Object;
    :pswitch_3
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "rawStackTrace":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleArtNougatOreoPieRawStackTrace([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 334
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->disableThreadPreHandlerIfExists()V

    .line 336
    sget-boolean v2, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v2, :cond_1

    .line 337
    const-string v2, "LeanStackTracer"

    const-string v3, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v0, "disableJniLogExceptionResult":J
    :cond_0
    :goto_0
    return-void

    .line 341
    .end local v0    # "disableJniLogExceptionResult":J
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/stacktracer/LeanStackTracer;->shouldDisableJniLogException(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 344
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->disableJniLogExceptionNougat()J

    move-result-wide v0

    .line 346
    .restart local v0    # "disableJniLogExceptionResult":J
    :goto_1
    const-string v2, "LeanStackTracer"

    const-string v3, "Disable jniLogException result = %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    .end local v0    # "disableJniLogExceptionResult":J
    :cond_2
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->disableJniLogException()J

    move-result-wide v0

    goto :goto_1
.end method

.method private static loadStackTracerLib()Z
    .locals 3

    .prologue
    .line 34
    :try_start_0
    const-string v1, "fb_leanstacktracer"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 35
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 36
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "LeanStackTracer"

    const-string v2, "Error loading LeanStackTracer lib."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseRawStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/util/List;
    .locals 11
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "rawStackTrace"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 88
    sget-boolean v5, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v5, :cond_1

    .line 89
    const-string v5, "LeanStackTracer"

    const-string v6, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v5, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    .line 127
    :cond_0
    :goto_0
    return-object v2

    .line 94
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "methodIDsAndOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 96
    .local v3, "previous":Ljava/lang/Throwable;
    move-object v4, p0

    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_2

    .line 98
    if-ne v4, p0, :cond_4

    move-object v1, p1

    .line 99
    .local v1, "currentCauseRawStackTrace":Ljava/lang/Object;
    :goto_2
    if-nez v1, :cond_5

    .line 100
    const-string v5, "LeanStackTracer"

    const-string v6, "Failed collecting stack trace for %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .end local v1    # "currentCauseRawStackTrace":Ljava/lang/Object;
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    const-string v5, "LeanStackTracer"

    const-string v6, "methodIDsAndOffsets empty, Shouldn\'t happen."

    invoke-static {v5, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x0

    .line 123
    :cond_3
    if-eqz v2, :cond_0

    .line 124
    const-string v5, "LeanStackTracer"

    const-string v6, "parseRawStackTrace= %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v4}, Lcom/facebook/stacktracer/LeanStackTracer;->getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 104
    .restart local v1    # "currentCauseRawStackTrace":Ljava/lang/Object;
    :cond_5
    invoke-static {v1}, Lcom/facebook/stacktracer/LeanStackTracer;->handleRawStackTrace(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "currentCausePairs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_6

    .line 106
    const-string v5, "LeanStackTracer"

    const-string v6, "Failed to convert rawStackTrace, probably unsupported OS"

    invoke-static {v5, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_6
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 111
    invoke-static {v4, v0}, Lcom/facebook/stacktracer/LeanStackTracer;->prettyPrint(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 114
    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    move-object v3, v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1
.end method

.method private static prettyPrint(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 8
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v3, "LeanStackTracer"

    const-string v4, "Printing Exception: %s(%s)"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 166
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 167
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 168
    const-string v3, "LeanStackTracer"

    const-string v4, "%d/%d \tat %s [0x%016X + 0x%04X]"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aget-object v7, v2, v0

    aput-object v7, v5, v6

    const/4 v6, 0x3

    mul-int/lit8 v7, v0, 0x2

    .line 174
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    .line 175
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 168
    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private static safeCastIntToLong(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 372
    const-wide v0, 0xffffffffL

    int-to-long v2, p0

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static shouldDisableJniLogException(Ljava/lang/String;)Z
    .locals 2
    .param p0, "model"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 352
    const-string v0, "LeanStackTracer"

    const-string v1, "shouldDisableJniLogException? device_type= \'%s\'"

    invoke-static {v0, v1, p0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i4d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native verifyClassObjectNameMarshmallow(Ljava/lang/Object;)I
.end method
