.class abstract Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;
.super Ljava/lang/Object;
.source "SignatureImpl.java"

# interfaces
.implements Lorg/mp4parser/aspectj/lang/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$CacheImpl;,
        Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;
    }
.end annotation


# static fields
.field static EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field static EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static useCache:Z


# instance fields
.field declaringType:Ljava/lang/Class;

.field declaringTypeName:Ljava/lang/String;

.field lookupClassLoader:Ljava/lang/ClassLoader;

.field modifiers:I

.field name:Ljava/lang/String;

.field stringCache:Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;

.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    .line 167
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 168
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 32
    iput p1, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 33
    iput-object p2, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method private getLookupClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method protected abstract createToString(Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
.end method

.method extractInt(I)I
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method extractString(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 142
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_0

    .line 145
    add-int/lit8 v1, v0, 0x1

    .line 146
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move p1, v2

    goto :goto_0

    .line 148
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    :cond_1
    iget-object v2, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method extractType(I)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-direct {p0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->getLookupClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method extractTypes(I)[Ljava/lang/Class;
    .locals 6

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 184
    new-array v3, v2, [Ljava/lang/Class;

    .line 185
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->getLookupClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-object v3
.end method

.method public getDeclaringType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeclaringTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractInt(I)I

    move-result v0

    iput v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 68
    :cond_0
    iget v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    sget-boolean v1, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;

    if-nez v1, :cond_3

    .line 45
    :try_start_0
    new-instance v1, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    invoke-direct {v1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$CacheImpl;-><init>()V

    iput-object v1, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->createToString(Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    sget-boolean v1, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v2, p1, Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v1, v2, v0}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;->set(ILjava/lang/String;)V

    .line 59
    :cond_2
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    const/4 v1, 0x0

    sput-boolean v1, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v1, p1, Lorg/mp4parser/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/SignatureImpl$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
