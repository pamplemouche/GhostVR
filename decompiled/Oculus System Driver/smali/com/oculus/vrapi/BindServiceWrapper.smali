.class public Lcom/oculus/vrapi/BindServiceWrapper;
.super Ljava/lang/Object;
.source "BindServiceWrapper.java"


# static fields
.field static final ANDROID_M:I = 0x17

.field static final ANDROID_N:I = 0x18

.field static cActivityManagerNative:Ljava/lang/Class;

.field static cActivityManagerNative_getDefault:Ljava/lang/reflect/Method;

.field static cActivityThread:Ljava/lang/Class;

.field static cActivityThread_getApplicationThread:Ljava/lang/reflect/Method;

.field static cContextImpl:Ljava/lang/Class;

.field static cContextImpl_getActivityToken:Ljava/lang/reflect/Method;

.field static cContextImpl_getOpPackageName:Ljava/lang/reflect/Method;

.field static cContextImpl_mMainThread:Ljava/lang/reflect/Field;

.field static cContextImpl_mPackageInfo:Ljava/lang/reflect/Field;

.field static cContextImpl_validateServiceIntent:Ljava/lang/reflect/Method;

.field static cContext_bindServiceAsUser:Ljava/lang/reflect/Method;

.field static cIActivityManager:Ljava/lang/Class;

.field static cIActivityManager_bindService:Ljava/lang/reflect/Method;

.field static cIApplicationThread:Ljava/lang/Class;

.field static cIServiceConnection:Ljava/lang/Class;

.field static cIntent_prepareToLeaveProcess:Ljava/lang/reflect/Method;

.field static cLoadedApk:Ljava/lang/Class;

.field static cLoadedApk_getServiceDispatcher:Ljava/lang/reflect/Method;

.field static cProcess_myUserHandle:Ljava/lang/reflect/Method;

.field static cUserHandle_getIdentifier:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceWithHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 169
    invoke-static/range {p0 .. p0}, Lcom/oculus/vrapi/BindServiceWrapper;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 171
    sget-object v4, Lcom/oculus/vrapi/BindServiceWrapper;->cProcess_myUserHandle:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 174
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x18

    if-lt v6, v13, :cond_0

    .line 176
    sget-object v6, Lcom/oculus/vrapi/BindServiceWrapper;->cContext_bindServiceAsUser:Ljava/lang/reflect/Method;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object p2, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v11

    aput-object p4, v7, v10

    aput-object v4, v7, v9

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 181
    :cond_0
    sget-object v6, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mPackageInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz p2, :cond_5

    if-eqz v6, :cond_4

    .line 187
    sget-object v13, Lcom/oculus/vrapi/BindServiceWrapper;->cLoadedApk_getServiceDispatcher:Ljava/lang/reflect/Method;

    new-array v14, v9, [Ljava/lang/Object;

    aput-object p2, v14, v5

    aput-object p0, v14, v12

    aput-object p4, v14, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v10

    invoke-virtual {v13, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    sget-object v6, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_validateServiceIntent:Ljava/lang/reflect/Method;

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v0, v13, v5

    invoke-virtual {v6, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v6, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getActivityToken:Ljava/lang/reflect/Method;

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 195
    sget-object v13, Lcom/oculus/vrapi/BindServiceWrapper;->cIntent_prepareToLeaveProcess:Ljava/lang/reflect/Method;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v13, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityManagerNative_getDefault:Ljava/lang/reflect/Method;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v13, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 199
    sget-object v13, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getOpPackageName:Ljava/lang/reflect/Method;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v13, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 201
    sget-object v14, Lcom/oculus/vrapi/BindServiceWrapper;->cUserHandle_getIdentifier:Ljava/lang/reflect/Method;

    new-array v15, v5, [Ljava/lang/Object;

    invoke-virtual {v14, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 203
    sget-object v14, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mMainThread:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 206
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    const/16 v16, 0x6

    const/4 v8, 0x7

    if-ge v14, v15, :cond_1

    .line 207
    sget-object v13, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager_bindService:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v14, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityThread_getApplicationThread:Ljava/lang/reflect/Method;

    new-array v15, v5, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v14, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v8, v5

    aput-object v6, v8, v12

    aput-object v0, v8, v11

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    aput-object v2, v8, v9

    .line 211
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v8, v2

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v16

    .line 207
    invoke-virtual {v13, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 214
    :cond_1
    sget-object v14, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager_bindService:Ljava/lang/reflect/Method;

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    sget-object v8, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityThread_getApplicationThread:Ljava/lang/reflect/Method;

    new-array v9, v5, [Ljava/lang/Object;

    .line 215
    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v15, v5

    aput-object v6, v15, v12

    aput-object v0, v15, v11

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v10

    const/4 v1, 0x4

    aput-object v2, v15, v1

    .line 218
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v15, v2

    aput-object v13, v15, v16

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v15, v2

    .line 214
    invoke-virtual {v14, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    return v12

    .line 224
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to bind to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getContextImpl(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 147
    :goto_0
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 151
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 153
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to find ContextImpl for context object"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 63
    const-class v0, Landroid/os/Process;

    const-string v1, "myUserHandle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cProcess_myUserHandle:Ljava/lang/reflect/Method;

    const-string v0, "android.app.ContextImpl"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x18

    if-lt v0, v7, :cond_0

    .line 70
    const-class v0, Landroid/content/Context;

    const-string v7, "bindServiceAsUser"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    aput-object v8, v1, v2

    const-class v2, Landroid/content/ServiceConnection;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/UserHandle;

    aput-object v2, v1, v3

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContext_bindServiceAsUser:Ljava/lang/reflect/Method;

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.app.IServiceConnection"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIServiceConnection:Ljava/lang/Class;

    .line 78
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    const-string v7, "mPackageInfo"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mPackageInfo:Ljava/lang/reflect/Field;

    .line 79
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mPackageInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    const-string v7, "mMainThread"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mMainThread:Ljava/lang/reflect/Field;

    .line 82
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_mMainThread:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    const-string v7, "validateServiceIntent"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Intent;

    aput-object v9, v8, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_validateServiceIntent:Ljava/lang/reflect/Method;

    .line 85
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_validateServiceIntent:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    const-string v7, "getActivityToken"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getActivityToken:Ljava/lang/reflect/Method;

    .line 88
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getActivityToken:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl:Ljava/lang/Class;

    const-string v7, "getOpPackageName"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getOpPackageName:Ljava/lang/reflect/Method;

    .line 91
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cContextImpl_getOpPackageName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v0, "android.app.LoadedApk"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cLoadedApk:Ljava/lang/Class;

    .line 96
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cLoadedApk:Ljava/lang/Class;

    const-string v7, "getServiceDispatcher"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/ServiceConnection;

    aput-object v9, v8, v2

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    const-class v9, Landroid/os/Handler;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cLoadedApk_getServiceDispatcher:Ljava/lang/reflect/Method;

    .line 99
    const-class v0, Landroid/content/Intent;

    const-string v7, "prepareToLeaveProcess"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIntent_prepareToLeaveProcess:Ljava/lang/reflect/Method;

    const-string v0, "android.app.ActivityManagerNative"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityManagerNative:Ljava/lang/Class;

    .line 103
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityManagerNative:Ljava/lang/Class;

    const-string v7, "getDefault"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityManagerNative_getDefault:Ljava/lang/reflect/Method;

    const-string v0, "android.app.ActivityThread"

    .line 105
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityThread:Ljava/lang/Class;

    .line 107
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityThread:Ljava/lang/Class;

    const-string v7, "getApplicationThread"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cActivityThread_getApplicationThread:Ljava/lang/reflect/Method;

    const-string v0, "android.app.IApplicationThread"

    .line 109
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIApplicationThread:Ljava/lang/Class;

    const-string v0, "android.app.IActivityManager"

    .line 111
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager:Ljava/lang/Class;

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    const/4 v8, 0x6

    const/4 v9, 0x7

    if-ge v0, v7, :cond_1

    .line 118
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager:Ljava/lang/Class;

    const-string v7, "bindService"

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Lcom/oculus/vrapi/BindServiceWrapper;->cIApplicationThread:Ljava/lang/Class;

    aput-object v10, v9, v2

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v6

    const-class v6, Landroid/content/Intent;

    aput-object v6, v9, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v9, v4

    sget-object v4, Lcom/oculus/vrapi/BindServiceWrapper;->cIServiceConnection:Ljava/lang/Class;

    aput-object v4, v9, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v9, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v9, v8

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager_bindService:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager:Ljava/lang/Class;

    const-string v7, "bindService"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Lcom/oculus/vrapi/BindServiceWrapper;->cIApplicationThread:Ljava/lang/Class;

    aput-object v11, v10, v2

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v10, v6

    const-class v6, Landroid/content/Intent;

    aput-object v6, v10, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v10, v4

    sget-object v4, Lcom/oculus/vrapi/BindServiceWrapper;->cIServiceConnection:Ljava/lang/Class;

    aput-object v4, v10, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v10, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v10, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v9

    invoke-virtual {v0, v7, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cIActivityManager_bindService:Ljava/lang/reflect/Method;

    .line 133
    :goto_0
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "getIdentifier"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/BindServiceWrapper;->cUserHandle_getIdentifier:Ljava/lang/reflect/Method;

    :goto_1
    return-void
.end method
