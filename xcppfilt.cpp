/* Copyright (c) 2021-2024 hors<horsicq@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
#include "xcppfilt.h"

XCppfilt::XCppfilt(QObject *pParent) : QObject(pParent)
{
}

QString XCppfilt::demangleGnuV3(const QString &sString)
{
    QString sResult;

    char *pResult = cplus_demangle_v3(sString.toUtf8().data(), (DMGL_PARAMS | DMGL_ANSI | DMGL_TYPES));  // TODO Check params !!!

    sResult = pResult;

    free(pResult);

    return sResult;
}

QString XCppfilt::demangleJavaV3(const QString &sString)
{
    QString sResult;

    char *pResult = java_demangle_v3(sString.toUtf8().data());

    sResult = pResult;

    free(pResult);

    return sResult;
}

QString XCppfilt::demangleRust(const QString &sString)
{
    QString sResult;

    char *pResult = rust_demangle(sString.toUtf8().data(), (DMGL_PARAMS | DMGL_ANSI | DMGL_TYPES));

    sResult = pResult;

    free(pResult);

    return sResult;
}
