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
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->parseRawStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 77
    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v1, Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;

    invoke-direct {v1, v2}, Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "LeanStackTracer"

    const-string v3, "Error thrown while collecting lean stack trace:"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static detectRawStackTraceField()Ljava/lang/reflect/Field;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 310
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 311
    const-string/jumbo v4, "stackState"

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
    :cond_0
    :goto_1
    return-object v0

    .line 310
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 315
    :cond_2
    const-string v0, "LeanStackTracer"

    const-string v1, "Couldn\'t locate raw stack trace field."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static native disableJniLogException()J
.end method

.method private static native disableJniLogExceptionNougat()J
.end method

.method private static disableThreadPreHandlerIfExists()V
    .locals 3

    .prologue
    .line 358
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string/jumbo v1, "uncaughtExceptionPreHandler"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 360
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const-string v0, "LeanStackTracer"

    const-string v1, "Disabled UncaughtExceptionPreHandler successfully"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v0, "LeanStackTracer"

    const-string v1, "No PreHandler, nothing to do."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    .line 366
    const-string v1, "LeanStackTracer"

    const-string v2, "Disabling uncaughtExceptionPreHandler failed."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

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
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 242
    if-nez p0, :cond_0

    .line 243
    const-string v0, "LeanStackTracer"

    const-string v1, "Trying to read field %s of null object"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLollipopDexSignature(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v0, "declaringClass"

    invoke-static {p0, v0}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    const-string v1, "dexCache"

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    const-string v1, "dex"

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "tableOfContents"

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "signature"

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    const-wide v0, 0xffffffffL

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/facebook/stacktracer/LeanStackTracer;->getDexSignatureAsLong([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getNougatOreoDexSignature(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v0, "dexCache"

    invoke-static {p0, v0}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    const-string v1, "dexFile"

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getFieldValueByReflection(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtDexSignature(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0xffffffffL

    goto :goto_0
.end method

.method public static getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 321
    sget-boolean v1, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v1, :cond_1

    .line 322
    const-string v1, "LeanStackTracer"

    const-string v2, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->detectRawStackTraceField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 330
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleArtLollipopRawStackTrace([Ljava/lang/Object;)Ljava/util/List;
    .locals 10
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
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 195
    array-length v0, p0

    if-gt v0, v4, :cond_0

    .line 196
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Lollipop rawStackTrace (almost) empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    check-cast v0, [I

    check-cast v0, [I

    .line 200
    array-length v2, v0

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 201
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Lollipop offsets not sufficient"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dexMethodIndex"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 210
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 211
    aget-object v1, p0, v2

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 212
    aget-object v5, p0, v2

    invoke-static {v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getLollipopDexSignature(Ljava/lang/Object;)J

    move-result-wide v6

    .line 213
    invoke-static {v1}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v8

    const/16 v1, 0x20

    shl-long/2addr v8, v1

    or-long/2addr v6, v8

    .line 215
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    aget v1, v0, v2

    invoke-static {v1}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 219
    :cond_2
    return-object v4
.end method

.method private static handleArtNougatOreoPieRawStackTrace([Ljava/lang/Object;)Ljava/util/List;
    .locals 9
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
    const/4 v1, 0x0

    .line 277
    array-length v0, p0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 278
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Nougat/Oreo rawStackTrace (almost) empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    aget-object v0, p0, v1

    check-cast v0, [I

    check-cast v0, [I

    .line 282
    array-length v2, v0

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 283
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Nougat/Oreo offsets not sufficient"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    :goto_0
    if-ge v1, v2, :cond_2

    .line 290
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Lcom/facebook/stacktracer/LeanStackTracer;->getNougatOreoDexSignature(Ljava/lang/Object;)J

    move-result-wide v4

    .line 291
    aget v6, v0, v1

    invoke-static {v6}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtNougatOreoMethodIdx(J)J

    move-result-wide v6

    .line 292
    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 293
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int v4, v2, v1

    aget v4, v0, v4

    .line 295
    invoke-static {v4}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    return-object v3
.end method

.method private static handleDalvikRawStackTrace([I)Ljava/util/List;
    .locals 6
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
    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 184
    mul-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getDalvikMethodIdx(J)J

    move-result-wide v4

    .line 185
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p0, v3

    .line 186
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-object v2
.end method

.method private static handleMarshmallowArtRawStackTrace([I)Ljava/util/List;
    .locals 8
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
    const/4 v0, 0x0

    .line 252
    const-class v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/facebook/stacktracer/LeanStackTracer;->verifyClassObjectNameMarshmallow(Ljava/lang/Object;)I

    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    new-instance v2, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "verifyResult: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    aget v3, p0, v0

    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v4

    .line 262
    invoke-static {v4, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtMarshmallowMethodIdx(J)J

    move-result-wide v6

    .line 263
    invoke-static {v4, v5}, Lcom/facebook/stacktracer/LeanStackTracer;->getArtMarshmallowDexSignature(J)J

    move-result-wide v4

    .line 264
    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int v3, v1, v0

    aget v3, p0, v3

    .line 268
    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->safeCastIntToLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    return-object v2
.end method

.method private static handleRawStackTrace(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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

    check-cast p0, [I

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleDalvikRawStackTrace([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_1
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleArtLollipopRawStackTrace([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_2
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lcom/facebook/stacktracer/LeanStackTracer;->handleMarshmallowArtRawStackTrace([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_3
    check-cast p0, [Ljava/lang/Object;

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
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->disableThreadPreHandlerIfExists()V

    .line 336
    sget-boolean v0, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v0, :cond_1

    .line 337
    const-string v0, "LeanStackTracer"

    const-string v1, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/stacktracer/LeanStackTracer;->shouldDisableJniLogException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 344
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->disableJniLogExceptionNougat()J

    move-result-wide v0

    .line 346
    :goto_1
    const-string v2, "LeanStackTracer"

    const-string v3, "Disable jniLogException result = %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 345
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
    const-string v0, "fb_leanstacktracer"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "LeanStackTracer"

    const-string v2, "Error loading LeanStackTracer lib."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseRawStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 88
    sget-boolean v1, Lcom/facebook/stacktracer/LeanStackTracer;->sStackTracerLibLoaded:Z

    if-nez v1, :cond_1

    .line 89
    const-string v1, "LeanStackTracer"

    const-string v2, "LeanStackTracer lib not loaded, aborting."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p0

    move-object v2, v0

    .line 96
    :goto_1
    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 98
    if-ne v3, p0, :cond_3

    move-object v2, p1

    .line 99
    :goto_2
    if-nez v2, :cond_4

    .line 100
    const-string v2, "LeanStackTracer"

    const-string v4, "Failed collecting stack trace for %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    const-string v1, "LeanStackTracer"

    const-string v2, "methodIDsAndOffsets empty, Shouldn\'t happen."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_4
    if-eqz v0, :cond_0

    .line 124
    const-string v1, "LeanStackTracer"

    const-string v2, "parseRawStackTrace= %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v3}, Lcom/facebook/stacktracer/LeanStackTracer;->getRawStackTrace(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 104
    :cond_4
    invoke-static {v2}, Lcom/facebook/stacktracer/LeanStackTracer;->handleRawStackTrace(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    const-string v2, "LeanStackTracer"

    const-string v3, "Failed to convert rawStackTrace, probably unsupported OS"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_5
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    invoke-static {v3, v2}, Lcom/facebook/stacktracer/LeanStackTracer;->prettyPrint(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 114
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method private static prettyPrint(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 9
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
    const/4 v1, 0x0

    .line 164
    const-string v0, "LeanStackTracer"

    const-string v2, "Printing Exception: %s(%s)"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 166
    array-length v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v1

    .line 167
    :goto_0
    if-ge v0, v3, :cond_0

    .line 168
    const-string v4, "LeanStackTracer"

    const-string v5, "%d/%d \tat %s [0x%016X + 0x%04X]"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v0

    aput-object v8, v6, v7

    const/4 v7, 0x3

    mul-int/lit8 v8, v0, 0x2

    .line 174
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    .line 175
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 168
    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method private static safeCastIntToLong(I)J
    .locals 4

    .prologue
    .line 372
    const-wide v0, 0xffffffffL

    int-to-long v2, p0

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static shouldDisableJniLogException(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 352
    const-string v0, "LeanStackTracer"

    const-string/jumbo v1, "shouldDisableJniLogException? device_type= \'%s\'"

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
